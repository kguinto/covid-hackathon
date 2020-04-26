
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
      'EvergreenHealth',
      '12333 NE 130th Lane
Kirkland, WA 98034',
      'Kirkland',
      'WA',
      'Call Jennifer at 425-899-1900 when you arrive',
      'No',
      '47.7160728',
      '-122.1764001'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'EvergreenHealth'
        AND o.latitude = '47.7160728'
        AND o.longitude = '-122.1764001'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'EvergreenHealth'
        AND o.latitude = '47.7160728'
        AND o.longitude = '-122.1764001'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'EvergreenHealth'
        AND o.latitude = '47.7160728'
        AND o.longitude = '-122.1764001'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'EvergreenHealth'
        AND o.latitude = '47.7160728'
        AND o.longitude = '-122.1764001'));

COMMIT;
