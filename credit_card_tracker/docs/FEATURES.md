# Credit Card Debt Tracker - Feature Specifications

## 1. User Authentication
- Email/password registration and login
- (Optional) Google Sign-in integration
- (Optional) Password reset functionality

## 2. Card Registration
- Add credit cards (up to 10 cards)
- Edit card details
- Delete card
- Optional minimum payment setting per card

## 3. Monthly Balance Management
### 3.1 Initial Balance Setting
- Set initial outstanding balance for each card at start of month
- Update/edit initial balance if needed
- Clear indication of current month's initial balance

### 3.2 Payment Recording
- Record payments made to cards during the month
- Payment amount
- (Optional) Payment date
- Automatic balance update after payment

## 4. Balance Display
- Real-time current balance per card
- Calculated as: Initial Balance - Sum of Monthly Payments
- Clear visual representation of debt status
- Total debt across all cards

## 5. Monthly Summary
- Automatic end-of-month balance calculation
- Historical view of end-of-month debt
- Monthly debt trends
- Per-card monthly summary

## 6. Payment Allocation Calculator
### 6.1 Input
- Total payment amount available
- Display current balance for each card
- Display minimum payments (if set)

### 6.2 Allocation Strategies
- "Pay at least the minimum" strategy
  - Prioritize minimum payments
  - Proportional distribution of remaining amount
- "Split evenly" strategy
  - Equal distribution across all cards
- Display allocated amounts per card

## 7. User Interface
### 7.1 Dashboard
- Overview of all cards and current balances
- Quick access to payment recording
- Monthly summary status
- Payment allocation calculator

### 7.2 Card Management
- List of registered cards
- Card details view
- Minimum payment settings
- Monthly balance setting

### 7.3 History View
- Monthly summaries by card
- Historical end-of-month debt
- Debt trends visualization

## 8. Data Structure (Firestore)

### Collections:
```typescript
users: {
  userId: string;
  email: string;
  createdAt: timestamp;
}

cards: {
  cardId: string;
  userId: string;
  name: string;
  minimumPayment: number | null;
  isActive: boolean;
  createdAt: timestamp;
}

monthlyBalances: {
  balanceId: string;
  userId: string;
  cardId: string;
  month: number;  // 1-12
  year: number;   // e.g., 2024
  initialBalance: number;
  finalBalance: number | null;  // Calculated at month end
  createdAt: timestamp;
  updatedAt: timestamp;
}

payments: {
  paymentId: string;
  userId: string;
  cardId: string;
  amount: number;
  date: timestamp;
  month: number;
  year: number;
}

monthlySummaries: {
  summaryId: string;
  userId: string;
  cardId: string;
  month: number;
  year: number;
  initialBalance: number;
  totalPayments: number;
  finalBalance: number;
  generatedAt: timestamp;
}
```

## 9. Security Considerations
- Secure user authentication
- Data validation for all inputs
- Protection against unauthorized access
- Regular data backups

## 10. Implementation Phases

### Phase 1: Core Setup (Weeks 1-2)
- Project setup
- Firebase integration
- Basic user authentication

### Phase 2: Card Management (Weeks 3-4)
- Card registration
- Monthly balance setting
- Basic UI implementation

### Phase 3: Payment Features (Weeks 5-6)
- Payment recording
- Real-time balance updates
- Payment allocation calculator

### Phase 4: Monthly Processing (Weeks 7-8)
- Monthly summaries
- Historical view
- Final testing and deployment

## Dynamic Minimum Payment Deduction

- Each card tracks the original minimum payment for the month, the amount paid toward the minimum, and the remaining minimum required.
- When a user makes a payment using the "Pay Now" button, the payment is deducted from both the card's balance and the remaining minimum for the month (until the minimum is $0).
- If the payment exceeds the remaining minimum, the excess is applied to the balance only.
- The payment allocation calculator uses the remaining minimum for each card when distributing payments.
- The UI should display the remaining minimum for each card and update it in real time as payments are made.
- Once the minimum is paid off for the month, further payments go only toward the balance.
- The dashboard and calculator must always reflect the correct remaining minimum for each card. 