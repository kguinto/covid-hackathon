
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
      'Providence St Peter Hospital',
      '413 Lilly Rd NE
Olympia, WA 98506',
      'Olympia',
      'WA',
      'Drop off at main entrance',
      'No',
      '47.0529957',
      '-122.8479904'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St Peter Hospital'
        AND o.latitude = '47.0529957'
        AND o.longitude = '-122.8479904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence St Peter Hospital'
        AND o.latitude = '47.0529957'
        AND o.longitude = '-122.8479904'));

COMMIT;
