function scr_report_bug()
{
    bug_report_prompt = show_question("Would you like to report a bug?");
    
    if (!bug_report_prompt)
        exit;
    
    _form_description = get_string("Submit a bug report:", "");
    
    if (_form_description == "")
        exit;
    
    _form_url = "https://docs.google.com/forms/d/e/1FAIpQLSdLZ-cO6-R63ynNzXsZk_BLCtcdVIEBbaYeHPD93WRbssmmHA/formResponse?usp=pp_url&entry.996123021=" + _form_description;
    _form_submit = "&submit=Submit";
    _full_url = _form_url + _form_submit;
    url_open(_full_url);
}
