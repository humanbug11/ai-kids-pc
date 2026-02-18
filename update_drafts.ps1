$files = @(
"future-careers-in-ai-era.md",
"ai-native-3-skills.md",
"ai-picture-book-guide.md",
"how-to-make-ai-tutor-with-gems.md",
"japan-ai-basic-plan-2025.md",
"ai-ethics-and-copyright.md",
"ai-new-year-card-2026.md",
"ai-study-with-gemini-chatgpt-2025.md",
"comparison-kids-pc-price.md",
"education-2025-giga-phase2.md",
"gemini-2-character-consistency.md",
"global-ai-education-trends.md",
"how-llm-works-for-kids.md",
"new-year-2026.md",
"recommended-ai-pcs-2025.md",
"recommended-pcs-for-kids.md",
"recommended-programming-schools.md",
"sns-ai-risk-and-literacy.md",
"steam-education-with-ai.md",
"teachers-role-in-ai-era.md",
"trouble-kids-pc-security.md",
"video-vs-ai-creative-learning.md",
"google-labs-fx-education.md",
"mext-ai-guideline-ver2.md",
"media-literacy-ai-education.md",
"digital-wellbeing-and-screen-time.md",
"questioning-skills-with-ai.md",
"space-nature-exploration-with-ai.md",
"special-needs-support-with-ai.md",
"programming-vs-ai-education.md",
"english-learning-with-ai.md",
"ai-homework-problem.md"
)

$basePath = "c:\Users\kazuk\ai-kids-pc\content\posts"

foreach ($file in $files) {
    $path = Join-Path $basePath $file
    if (Test-Path $path) {
        $content = Get-Content $path -Raw
        if ($content -match "draft\s*=\s*false") {
            $content = $content -replace "draft\s*=\s*false", "draft = true"
            Set-Content $path $content -Encoding UTF8
            Write-Host "Updated (TOML): $file"
        }
        elseif ($content -match "draft:\s*false") {
            $content = $content -replace "draft:\s*false", "draft: true"
            Set-Content $path $content -Encoding UTF8
            Write-Host "Updated (YAML): $file"
        }
        else {
            Write-Host "Skipped (already true or missing): $file"
        }
    } else {
        Write-Host "File not found: $file"
    }
}
