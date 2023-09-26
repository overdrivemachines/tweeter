module TweetsHelper
  def new_tweet_textarea_class
    "border-b border-t-0 border-x-0 mb-6 px-6 pt-6 block w-full border-gray-200 focus:shadow-none focus:outline-none focus:ring-transparent focus:border-gray-300 resize-none min-height-[180px] text-lg"
  end
  def new_tweet_button_class
    "px-6 py-2 bg-sky-400 text-white font-semibold rounded-full text-center cursor-pointer inline-block hover:bg-sky-500 transition ease-in-out duration-300"
  end
end
