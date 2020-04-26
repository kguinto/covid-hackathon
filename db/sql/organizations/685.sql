
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
      'Onondaga County Medical Society',
      '6707 Brooklawn Avenue #4 
Syracuse, NY 13211',
      'Syracuse ',
      'NY',
      'Call ahead for in person delivery',
      'Yes',
      '43.0939075',
      '-76.0962042'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Tyvek Paint Suits',
    (SELECT id FROM organizations o
      WHERE o.name = 'Onondaga County Medical Society'
        AND o.latitude = '43.0939075'
        AND o.longitude = '-76.0962042'));

COMMIT;
