package com.gul;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class ImageDelete {

	public static void main(String[] args) {

		Path path = Paths.get("E://file-server/images/fruit-1218166_640.png");

		try {
			// Delete the file
			Files.delete(path);
			System.out.println("File deleted successfully.");
		} catch (IOException e) {
			System.err.println("Failed to delete the file: " + e.getMessage());
		}

	}

}
