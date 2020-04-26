
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
      'One Medical ',
      'CenturyLink Plaza
1600 7th Ave #110, Seattle, WA 98101',
      'Seattle ',
      'WA',
      'Please Mail, Attention Jeremy F.',
      'Yes',
      '47.6132195',
      '-122.334337'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '47.6132195'
        AND o.longitude = '-122.334337'));

COMMIT;
