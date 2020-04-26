
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
      'Medical City Weatherford',
      '2533 Hadley St
Weatherford, TX 76087',
      'Weatherford',
      'TX',
      'Weatherford',
      'Yes',
      '32.719827',
      '-97.816989'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Weatherford'
        AND o.latitude = '32.719827'
        AND o.longitude = '-97.816989'));

COMMIT;
