
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
      'Northwestern Memorial Hospital',
      '251 E Huron St
Chicago, IL 60611',
      'Chicago',
      'IL',
      '',
      'Yes',
      '41.8946256',
      '-87.6209858'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwestern Memorial Hospital'
        AND o.latitude = '41.8946256'
        AND o.longitude = '-87.6209858'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwestern Memorial Hospital'
        AND o.latitude = '41.8946256'
        AND o.longitude = '-87.6209858'));

COMMIT;
