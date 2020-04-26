
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
      'Diamond Ridge Health and Rehabilitation',
      '2730 W Marc Knighton Ct
Lecanto, FL 34461',
      'Lecanto',
      'FL',
      'May be brought to the front door or mailed to the physical address',
      'Yes',
      '28.9038014',
      '-82.47976'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Diamond Ridge Health and Rehabilitation'
        AND o.latitude = '28.9038014'
        AND o.longitude = '-82.47976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Diamond Ridge Health and Rehabilitation'
        AND o.latitude = '28.9038014'
        AND o.longitude = '-82.47976'));

COMMIT;
