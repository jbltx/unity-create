# Unity Create

Create an empty Unity Project.

<br/>

## How to use

<br/>

##### **Example**

```yml
- name: Create Unity Project
  uses: jbltx/unity-create@v1.1
  env:
    UNITY_LICENSE: ${{ secrets.UNITY_LICENSE }}
  with:
    unityVersion: 2019.2.11f1
    projectPath: ./myProject
```

<br/>

##### **Inputs**

| Key            | Description                                       |
| -------------- | ------------------------------------------------- |
| `unityVersion` | Version of unity to use for creating the project. |
| `projectPath`  | Relative path to the project to be built.         |

<br/>
<br/>

## Related actions (GameCI)

Visit the [Unity Actions](https://github.com/webbertakken/unity-actions) status repository for related Actions.

<br/>

## Contributing

To help out sharpen the documentation, please find the docs [repository](https://github.com/Unity-CI/Website).

To contribute to this project, kindly read the [contribution guide](./CONTRIBUTING.md).

<br/>

## Licence

[MIT](./LICENSE)
