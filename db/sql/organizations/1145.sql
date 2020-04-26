
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
      'Emblem Healthcare',
      '3205 W Ray Rd #2
Chandler, AZ 85226',
      'Chandler',
      'AZ',
      'drop off or mail is fine',
      'Yes',
      '33.3183636',
      '-111.8977843'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emblem Healthcare'
        AND o.latitude = '33.3183636'
        AND o.longitude = '-111.8977843'));

COMMIT;
