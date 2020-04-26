
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
      'Sagepoint Nursing and Rehab',
      '10990 Smithfield Pl
Waldorf, MD 20602',
      'La Plata',
      'MD',
      'Drop off on porch, residence. Attn: Donna Dash',
      'Yes',
      '38.5377966',
      '-76.9302113'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sagepoint Nursing and Rehab'
        AND o.latitude = '38.5377966'
        AND o.longitude = '-76.9302113'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sagepoint Nursing and Rehab'
        AND o.latitude = '38.5377966'
        AND o.longitude = '-76.9302113'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sagepoint Nursing and Rehab'
        AND o.latitude = '38.5377966'
        AND o.longitude = '-76.9302113'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sagepoint Nursing and Rehab'
        AND o.latitude = '38.5377966'
        AND o.longitude = '-76.9302113'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sagepoint Nursing and Rehab'
        AND o.latitude = '38.5377966'
        AND o.longitude = '-76.9302113'));

COMMIT;
