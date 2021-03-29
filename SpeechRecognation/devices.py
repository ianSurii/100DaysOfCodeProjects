import speech_recognition as sr
for index,name in enumerate(sr.Microphone.list_microphone_names()):
	print("name\"{1}\" found for index={0}".format(index,name))
