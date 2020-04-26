
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
      'Bowie Health Center',
      '15001 Health Center Drive
Bowie, MD 20716',
      'Bowie',
      'MD',
      'In the ER lobby',
      'Yes',
      '38.9494063',
      '-76.7459566'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bowie Health Center'
        AND o.latitude = '38.9494063'
        AND o.longitude = '-76.7459566'));

COMMIT;
