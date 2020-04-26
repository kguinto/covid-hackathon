
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
      'Providence Centralia Hospital',
      '914 S Scheuber Rd
Centralia, WA 98531',
      'Centralia',
      'WA',
      'Drop off at emergency department',
      'No',
      '46.7123113',
      '-122.9855393'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Centralia Hospital'
        AND o.latitude = '46.7123113'
        AND o.longitude = '-122.9855393'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Centralia Hospital'
        AND o.latitude = '46.7123113'
        AND o.longitude = '-122.9855393'));

COMMIT;
