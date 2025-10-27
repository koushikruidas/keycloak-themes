<#-- Minimal Keycloak error template to avoid TemplateNotFoundException -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>${title!'Error'}</title>
  <style>
    body{font-family: system-ui, -apple-system, 'Segoe UI', Roboto, Arial, sans-serif; padding:3rem; color:#222}
    .container{max-width:720px;margin:0 auto}
    h1{color:#b00}
    pre{background:#f6f6f6;padding:1rem;border-radius:6px;overflow:auto}
    a.btn{display:inline-block;margin-top:1rem;padding:.5rem .9rem;background:#1672b3;color:#fff;border-radius:6px;text-decoration:none}
  </style>
</head>
<body>
  <div class="container">
    <h1>${message!'An error occurred'}</h1>

    <#-- Optional detailed message if present -->
    <#if detail?? && detail?has_content>
      <pre>${detail}</pre>
    <#elseif details?? && details?has_content>
      <pre>${details}</pre>
    </#if>

    <p>
      <a class="btn" href="${loginUrl!'./'}">Return to login</a>
    </p>
  </div>
</body>
</html>
