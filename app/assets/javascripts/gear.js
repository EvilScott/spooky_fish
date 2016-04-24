$(function() {
    var $newGearForm = $('#new_gear_action');
    $newGearForm.find('#gear_action_reason_id').change(function() {
        var reasonVal = parseInt($(this).val());
        $newGearForm
            .find('#recycling_credit_code_section, #disposal_receipt_section')
                .find('input')
                .attr('disabled', 'disabled')
                .end()
            .hide();
        if (reasonVal === 2) {
            $newGearForm
                .find('#recycling_credit_code_section')
                    .find('input')
                    .removeAttr('disabled')
                    .end()
                .show();
        } else if (reasonVal === 3) {
            $newGearForm
                .find('#disposal_receipt_section')
                    .find('input')
                    .removeAttr('disabled')
                    .end()
                .removeAttr('disabled')
                .show();
        }
    });
    $newGearForm.find('#gear_action_reason_id').change();
});
