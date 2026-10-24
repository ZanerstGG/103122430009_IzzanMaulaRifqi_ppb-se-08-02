import 'package:flutter/material.dart';
import 'color_options.dart';
import 'color_option.dart';
import 'date_format.dart';
import 'tech_item.dart';

class AddTechDialog extends StatefulWidget {
  const AddTechDialog({super.key});

  @override
  State<AddTechDialog> createState() => _AddTechDialogState();
}

class _AddTechDialogState extends State<AddTechDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _platformController = TextEditingController();
  final _langController = TextEditingController();

  DateTime? _selectedDate;
  ColorOption? _selectedColor;
  bool _showDateError = false;

  @override
  void dispose() {
    _nameController.dispose();
    _platformController.dispose();
    _langController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (!mounted || picked == null) return;
    setState(() {
      _selectedDate = picked;
      _showDateError = false;
    });
  }

  void _save() {
    final isFormValid = _formKey.currentState!.validate();
    final isDateValid = _selectedDate != null;
    setState(() => _showDateError = !isDateValid);
    if (!isFormValid || !isDateValid) return;

    Navigator.of(context).pop(
      TechItem(
        name: _nameController.text.trim(),
        platform: _platformController.text.trim(),
        lang: _langController.text.trim(),
        date: _selectedDate!,
        color: _selectedColor!.color,
      ),
    );
  }

  String? _requiredValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Wajib diisi';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add New Tech'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Tech Name'),
                validator: _requiredValidator,
              ),
              TextFormField(
                controller: _platformController,
                decoration: const InputDecoration(labelText: 'Platform'),
                validator: _requiredValidator,
              ),
              TextFormField(
                controller: _langController,
                decoration: const InputDecoration(labelText: 'Lang'),
                validator: _requiredValidator,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _selectedDate == null
                          ? 'No date selected'
                          : formatDate(_selectedDate!),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: _pickDate,
                    child: const Text('Select Date'),
                  ),
                ],
              ),
              if (_showDateError)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'Pilih tanggal terlebih dahulu',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12,
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              DropdownButtonFormField<ColorOption>(
                isExpanded: true,
                hint: const Text('Choose Color'),
                items: colorOptions
                    .map(
                      (option) => DropdownMenuItem<ColorOption>(
                        value: option,
                        child: Text(option.label),
                      ),
                    )
                    .toList(),
                onChanged: (value) => setState(() => _selectedColor = value),
                validator: (value) =>
                    value == null ? 'Pilih salah satu warna' : null,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _save,
          child: const Text('Save'),
        ),
      ],
    );
  }
}