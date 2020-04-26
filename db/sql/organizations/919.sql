
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
      'Ascentist Ear Nose and Throat',
      '6815 E Frontage Rd Ste B
Overland Park, KS 66204',
      'Merriam',
      'KS',
      '6815 E. Frontage Rd',
      'Yes',
      '39.0044175',
      '-94.6925582'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentist Ear Nose and Throat'
        AND o.latitude = '39.0044175'
        AND o.longitude = '-94.6925582'));

COMMIT;
