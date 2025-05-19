# Create core directories
New-Item -ItemType Directory -Force -Path "lib/core/constants"
New-Item -ItemType Directory -Force -Path "lib/core/errors"
New-Item -ItemType Directory -Force -Path "lib/core/network"
New-Item -ItemType Directory -Force -Path "lib/core/utils"

# Create data directories
New-Item -ItemType Directory -Force -Path "lib/data/models"
New-Item -ItemType Directory -Force -Path "lib/data/repositories"
New-Item -ItemType Directory -Force -Path "lib/data/providers"

# Create feature directories
New-Item -ItemType Directory -Force -Path "lib/features/auth/screens"
New-Item -ItemType Directory -Force -Path "lib/features/auth/widgets"
New-Item -ItemType Directory -Force -Path "lib/features/auth/controllers"

New-Item -ItemType Directory -Force -Path "lib/features/cards/screens"
New-Item -ItemType Directory -Force -Path "lib/features/cards/widgets"
New-Item -ItemType Directory -Force -Path "lib/features/cards/controllers"

New-Item -ItemType Directory -Force -Path "lib/features/balance/screens"
New-Item -ItemType Directory -Force -Path "lib/features/balance/widgets"
New-Item -ItemType Directory -Force -Path "lib/features/balance/controllers"

New-Item -ItemType Directory -Force -Path "lib/features/payments/screens"
New-Item -ItemType Directory -Force -Path "lib/features/payments/widgets"
New-Item -ItemType Directory -Force -Path "lib/features/payments/controllers"

# Create shared directories
New-Item -ItemType Directory -Force -Path "lib/shared/widgets"
New-Item -ItemType Directory -Force -Path "lib/shared/theme"

# Create test directories
New-Item -ItemType Directory -Force -Path "test/unit/models"
New-Item -ItemType Directory -Force -Path "test/unit/repositories"
New-Item -ItemType Directory -Force -Path "test/unit/controllers"
New-Item -ItemType Directory -Force -Path "test/widget/screens"
New-Item -ItemType Directory -Force -Path "test/integration/features"

# Create assets directories
New-Item -ItemType Directory -Force -Path "assets/images"
New-Item -ItemType Directory -Force -Path "assets/icons"
New-Item -ItemType Directory -Force -Path "assets/fonts"

Write-Host "Project structure created successfully!" 