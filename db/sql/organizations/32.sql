
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
      'Kadlec Medical Center',
      '888 Swift Blvd
Richland, WA 99352',
      'Richland',
      'WA',
      'Attn: Emergency Room',
      'Yes',
      '46.2813864',
      '-119.2822234'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kadlec Medical Center'
        AND o.latitude = '46.2813864'
        AND o.longitude = '-119.2822234'));

COMMIT;
