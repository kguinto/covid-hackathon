
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
      'Legacy Transitional Care and Rehab',
      '460 Auburn Ave NE
Atlanta, GA 30312',
      'Atlanta',
      'GA',
      'Attn: Erica Wells',
      'Yes',
      '33.7557678',
      '-84.3725364'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Transitional Care and Rehab'
        AND o.latitude = '33.7557678'
        AND o.longitude = '-84.3725364'));

COMMIT;
