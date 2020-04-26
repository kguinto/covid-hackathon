
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
      'Total Health Care',
      '1501 Division St 
Baltimore, MD 21217',
      'Baltimore ',
      'MD',
      'Attn Dr Marceé White ',
      'Yes',
      '39.3032246',
      '-76.6316142'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Total Health Care'
        AND o.latitude = '39.3032246'
        AND o.longitude = '-76.6316142'));

COMMIT;
