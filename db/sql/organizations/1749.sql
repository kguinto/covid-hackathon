
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
      'New River Health Association',
      '908 Scarbro Rd
Scarbro, WV 25917',
      'Scarbro',
      'WV',
      'ATTN: CHRIS BAILEY  OR CAN BRING TO THE FRONT DOOR',
      'Yes',
      '37.9406712',
      '-81.160512'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers without the need of probe covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New River Health Association'
        AND o.latitude = '37.9406712'
        AND o.longitude = '-81.160512'));

COMMIT;
