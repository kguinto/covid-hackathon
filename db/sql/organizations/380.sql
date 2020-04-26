
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
      'Frisco Internal Medicine',
      '3880 Parkwood Blvd STE 304
Frisco, TX 75034',
      'Frisco',
      'TX',
      'Frisco Internal Medicine
3880 Parkwood Boulevard, Suite 304
Frisco, TX 75034',
      'Yes',
      '33.1101098',
      '-96.8142564'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frisco Internal Medicine'
        AND o.latitude = '33.1101098'
        AND o.longitude = '-96.8142564'));

COMMIT;
