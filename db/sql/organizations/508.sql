
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
      'Riverdale Rehab & Care Community of Brighton',
      '2311 E Bridge St
Brighton, CO 80601',
      'Brighton',
      'CO',
      'Will pick up if local, or can drop off.',
      'Unsure',
      '39.9876363',
      '-104.7940753'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverdale Rehab & Care Community of Brighton'
        AND o.latitude = '39.9876363'
        AND o.longitude = '-104.7940753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverdale Rehab & Care Community of Brighton'
        AND o.latitude = '39.9876363'
        AND o.longitude = '-104.7940753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverdale Rehab & Care Community of Brighton'
        AND o.latitude = '39.9876363'
        AND o.longitude = '-104.7940753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverdale Rehab & Care Community of Brighton'
        AND o.latitude = '39.9876363'
        AND o.longitude = '-104.7940753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverdale Rehab & Care Community of Brighton'
        AND o.latitude = '39.9876363'
        AND o.longitude = '-104.7940753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverdale Rehab & Care Community of Brighton'
        AND o.latitude = '39.9876363'
        AND o.longitude = '-104.7940753'));

COMMIT;
