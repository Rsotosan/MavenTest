package io.github.rsotosan.lib.text;

public class Text {
	
	private String text;
	
	public Text (String text) {
		this.text = text;
	}
	
	public String concatenate(String text) {
		return this.text + text;
	}
}
