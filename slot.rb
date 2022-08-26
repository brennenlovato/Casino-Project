def multiplier(s1, s2, s3)

          if s1 == s2 and s2 == s3:
            multiplier = 3
          elsif s1 == s2 or s2 == s3 or s1 == s3:
            multiplier = 2
          else
            multiplier = 0;

          return multiplier


    def main()

    slotImageList = ['Cherry', 'Orange', 'Plum', 'Bell', 'Melon', 'Bar']

    cash = gets
    puts "How much total money would you like to play with today? " +cash
    while True:
        puts("Total cash:  $", cash)
        bet = gets
        puts "How much would you like to bet? " +bet

    cash = (cash - bet)

    slotImage1 = slotImageList.sample
    slotImage2 = slotImageList.sample
    slotImage3 = slotImageList.sample

    puts "slotImage1", " - ", "slotImage2", " - ", "slotImage3"

    winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
    puts "You have won $" +winnings

    cash = cash + winnings

    cont = gets
    puts "Would you like to continue? (yes to continue) " +cont
    if cont != "yes":
        puts "You have ended with $" +cash
    else
        puts " "
    end
