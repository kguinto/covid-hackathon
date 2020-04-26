
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
      'Pediatrics of Seven Corners',
      '6404-K, Seven Corners Pl
Falls Church, VA 22044',
      'Falls Church',
      'VA',
      'Mailing or Curbside ',
      'Yes',
      '38.8708786',
      '-77.158318'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics of Seven Corners'
        AND o.latitude = '38.8708786'
        AND o.longitude = '-77.158318'));

COMMIT;
