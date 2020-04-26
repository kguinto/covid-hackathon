
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Our Lady of Fatima hospital ',
      '200 High Service Ave
North Providence, RI 02904',
      'North Providence ',
      'RI',
      '',
      'Yes',
      '41.855558',
      '-71.459817'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Our Lady of Fatima hospital '
        AND o.latitude = '41.855558'
        AND o.longitude = '-71.459817'));

COMMIT;
