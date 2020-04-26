
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
      'Harford Memorial Hospital ',
      '501 S. Union Avenue
Havre De Grace, MD 21078',
      'Havre de Grace',
      'MD',
      'To Emergency Dept. Ask registration to call ED charge nurse.',
      'Yes',
      '39.5429695',
      '-76.0908574'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harford Memorial Hospital '
        AND o.latitude = '39.5429695'
        AND o.longitude = '-76.0908574'));

COMMIT;
