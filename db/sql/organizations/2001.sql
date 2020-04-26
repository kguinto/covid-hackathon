
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
      'Mary''s Center ',
      '8908 Riggs Rd
Adelphi, MD 20783',
      'Adelphi',
      'MD',
      'Front desk entrance',
      'No',
      '39.0017807',
      '-76.9738022'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary''s Center '
        AND o.latitude = '39.0017807'
        AND o.longitude = '-76.9738022'));

COMMIT;
