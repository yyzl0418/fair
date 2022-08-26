import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTableDemo"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Age',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Role',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Sarah')),
                    DataCell(Text('19')),
                    DataCell(Text('Student')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Janine')),
                    DataCell(Text('43')),
                    DataCell(Text('Professor')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('William')),
                    DataCell(Text('27')),
                    DataCell(Text('Associate Professor')),
                  ],
                ),
              ],
            )),
            Expanded(child: FairWidget(name: "DataTableDemo",path: "assets/bundle/datatable/lib_data_table_data_table_fair.fair.json",)),
          ],
        ),
      ),
    );
  }
}
