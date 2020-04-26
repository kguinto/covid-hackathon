
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
      'Willapa Behavioral Health',
      '2204 Pacific Ave
Long Beach, WA 98631',
      'Long Beach',
      'WA',
      'Call (360) 867-0949',
      'Yes',
      '46.3686897',
      '-124.053367'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willapa Behavioral Health'
        AND o.latitude = '46.3686897'
        AND o.longitude = '-124.053367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willapa Behavioral Health'
        AND o.latitude = '46.3686897'
        AND o.longitude = '-124.053367'));

COMMIT;
