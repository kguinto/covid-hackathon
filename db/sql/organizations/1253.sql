
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
      'Angelic Healthcare',
      '637 Georges Rd
North Brunswick Township, NJ 08902',
      'North Brunswick',
      'NJ',
      '',
      'No',
      '40.4690456',
      '-74.4523566'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Angelic Healthcare'
        AND o.latitude = '40.4690456'
        AND o.longitude = '-74.4523566'));

COMMIT;
