<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ${realm.displayName!}</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><circle cx='50' cy='50' r='45' stroke='%234CAF50' stroke-width='2'/><path d='M30 50h40' stroke='%234CAF50' stroke-width='2'/></svg>">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #4CAF50;
            --primary-light: rgba(76, 175, 80, 0.1);
            --text: #2c3e50;
            --gradient-1: #4CAF50;
            --gradient-2: #45a049;
            --background: #f8fafc;
            --card-bg: rgba(255, 255, 255, 0.9);
            --border: rgba(76, 175, 80, 0.2);
            --error-color: #dc2626;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, system-ui, sans-serif;
            background: linear-gradient(135deg, #f8fafc 0%, #eef2f7 100%);
            color: #2c3e50;
            line-height: 1.6;
            margin: 0;
            min-height: 100vh;
            -webkit-font-smoothing: antialiased;
        }

        .hero {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            padding: 2rem;
            background: linear-gradient(135deg, #f8fafc 0%, #eef2f7 100%);
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle at center, rgba(76, 175, 80, 0.1) 0%, transparent 50%);
            animation: rotate 30s linear infinite;
        }

        .content {
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
            position: relative;
            z-index: 1;
            opacity: 0;
            transform: translateY(20px);
            animation: fadeInUp 1s ease-out forwards;
        }

        .logo {
            margin-bottom: 1.5rem;
            animation: float 6s ease-in-out infinite;
        }

        .logo svg {
            width: 60px;
            height: 60px;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: 700;
            margin: 0 0 1.5rem;
            background: linear-gradient(135deg, #4CAF50, #45a049);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .subtitle {
            font-size: 1.25rem;
            color: #666;
            margin-bottom: 3rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            animation: fadeInUp 1s ease-out 0.4s backwards;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 2rem;
            margin-top: 2rem;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .filter-group {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            margin-bottom: 1.5rem;
        }

        label {
            font-weight: 500;
            color: #2c3e50;
            font-size: 0.9rem;
            text-align: left;
        }

        input {
            padding: 0.75rem 1rem;
            border: 1px solid rgba(76, 175, 80, 0.2);
            border-radius: 8px;
            font-size: 0.95rem;
            background: white;
            transition: all 0.3s ease;
            width: 100%;
            min-height: 44px;
            color: #2c3e50;
        }

        input:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 0 3px rgba(76, 175, 80, 0.1);
        }

        .btn-primary {
            background: #4CAF50;
            color: white;
            border: none;
            padding: 0.75rem 2rem;
            border-radius: 50px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(76, 175, 80, 0.3);
            width: 100%;
            font-size: 1rem;
        }

        .btn-primary:hover {
            transform: translateY(-2px) scale(1.02);
            background: #45a049;
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.9);
            color: #4CAF50;
            border: 2px solid #4CAF50;
            padding: 0.5rem 1.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            display: inline-block;
            margin-top: 0.5rem;
        }

        .btn-secondary:hover {
            background: #4CAF50;
            color: white;
        }

        .error-message {
            background: #dc2626;
            color: white;
            padding: 1rem;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            text-align: center;
            font-weight: 500;
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
            100% { transform: translateY(0px); }
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .hero {
                padding: 1rem;
            }
            
            h1 {
                font-size: 2rem;
            }
            
            .glass-card {
                margin: 1rem;
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <main class="hero">
        <div class="content">
            <div class="logo">
                <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="50" cy="50" r="45" stroke="url(#gradient)" stroke-width="2"/>
                    <path d="M30 50h40" stroke="url(#gradient)" stroke-width="2" pathLength="100" stroke-dasharray="100" stroke-dashoffset="100">
                        <!-- Step 1: Line drawing with wave motion (0-3s) -->
                        <animate 
                            attributeName="stroke-dashoffset" 
                            from="100" 
                            to="0"
                            dur="2s"
                            fill="freeze"
                            begin="0s;reset.end"/>
                        <animate 
                            id="wave"
                            attributeName="d" 
                            dur="4s"
                            values="M30 50h40; M30 50c20-20 20 20 40 0; M30 50h40"
                            calcMode="spline"
                            keySplines="0.4 0 0.2 1; 0.4 0 0.2 1"
                            begin="0s;reset.end"/>
                        <animate
                            id="reset"
                            attributeName="stroke-dashoffset"
                            to="100"
                            dur="0.1s"
                            begin="wave.end"
                            fill="freeze"/>
                    </path>
                    <defs>
                        <linearGradient id="gradient" x1="0%" y1="0%" x2="100%" y2="100%">
                            <stop offset="0%" style="stop-color: #4CAF50">
                                <animate attributeName="stop-color"
                                    dur="3s"
                                    repeatCount="indefinite"
                                    values="#4CAF50; #45a049; #4CAF50"/>
                            </stop>
                            <stop offset="100%" style="stop-color: #45a049">
                                <animate attributeName="stop-color"
                                    dur="3s"
                                    repeatCount="indefinite"
                                    values="#45a049; #4CAF50; #45a049"/>
                            </stop>
                        </linearGradient>
                    </defs>
                </svg>
            </div>
            <h1>Welcome to ${realm.displayName!}</h1>
            <p class="subtitle">Sign in to access your dashboard</p>
            
            <div class="glass-card">
                <#if message?? && message?has_content>
                    <div class="error-message">
                        <#if message.type = 'error'>
                            <#if message.summary = 'invalidUserMessage'>
                                Invalid username or password
                            <#elseif message.summary = 'userNotFoundMessage'>
                                User not found
                            <#elseif message.summary = 'invalidCredentialsMessage'>
                                Invalid credentials
                            <#elseif message.summary = 'accountDisabledMessage'>
                                Account is disabled
                            <#elseif message.summary = 'accountTemporarilyDisabledMessage'>
                                Account is temporarily disabled
                            <#elseif message.summary = 'expiredCodeMessage'>
                                Your session has expired
                            <#elseif message.summary = 'expiredActionMessage'>
                                Your action has expired
                            <#else>
                                ${kcSanitize(message.summary)?no_esc}
                            </#if>
                        <#else>
                            ${kcSanitize(message.summary)?no_esc}
                        </#if>
                    </div>
                </#if>

                <form id="kc-form-login" action="${url.loginAction}" method="post">
                    <div class="filter-group">
                        <label for="username">Username</label>
                        <input tabindex="1" id="username" name="username" value="${username!}" type="text" autofocus="autofocus"/>
                    </div>

                    <div class="filter-group">
                        <label for="password">Password</label>
                        <input tabindex="2" id="password" name="password" type="password"/>
                    </div>

                    <button tabindex="3" class="btn-primary" type="submit">Login</button>

                    <#if realm.password?? && (registrationAllowed?? && !registrationAllowed)>
                        <div style="text-align: center; margin-top: 0.5rem;">
                            <a href="${url.loginResetCredentialsUrl}" class="btn-secondary">Forgot password?</a>
                        </div>
                    </#if>
                </form>

                <#if registrationAllowed?? && registrationAllowed>
                    <p style="margin-top: 1.5rem; text-align: center; color: #2c3e50; opacity: 0.8;">
                        Don't have an account? <a href="${url.registrationUrl}" style="color: #4CAF50; text-decoration: none; font-weight: 500;">Register</a>
                    </p>
                </#if>
            </div>
        </div>
    </main>

    <script>
        // Add smooth interactions
        document.addEventListener('DOMContentLoaded', function() {
            const inputs = document.querySelectorAll('input');
            inputs.forEach(input => {
                input.addEventListener('focus', function() {
                    this.parentElement.style.transform = 'translateY(-2px)';
                });
                input.addEventListener('blur', function() {
                    this.parentElement.style.transform = 'translateY(0)';
                });
            });
        });
    </script>
</body>
</html>