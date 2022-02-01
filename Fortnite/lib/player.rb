require 'pry'


class Player
  attr_accessor :user_name ,  :life_points


  def initialize(name)
   @user_name = name
   @life_points = 10

 end

     def show_state
         puts "#{@user_name} a #{life_points} points de vie "
      end

      def get_damage (damages)
          @life_points= @life_points - damages
        if @life_points <= 0
          puts "#{@user_name} is dead "
        end
      end

      def compute_damage
      return rand(1..6)
    end

     def attack (player)

       degats = compute_damage()
       puts "#{@user_name} attacks #{player.user_name} et lui inflige #{degats} points de dégats"
       player.get_damage(degats)
       if player.life_points >=0

       puts "il reste #{player.life_points} points a #{player.user_name}"
       end

     end
end


class HumanPlayer < Player
   attr_accessor :weapon_level

  def initialize(name)
   @user_name = name
   @life_points = 100
   @weapon_level = 1
  end

  def show_state
    puts "#{@user_name} a #{life_points} points de vie et une arme de niveau #{@weapon_level} "
  end

   def compute_damage
     return rand(1..6) * @weapon_level
   end

   def search_weapon

    multiplicateur = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{multiplicateur}"
    if multiplicateur > @weapon_level
    @weapon_level =  multiplicateur
    end
    if multiplicateur < @weapon_level
      puts "la nouvelle arme n'est pas plus forte "
    end

   end




end
