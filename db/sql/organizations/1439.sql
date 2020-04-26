
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
      'Premier Pediatrics of Manassas',
      '8713 Digges Rd
Manassas, VA 20110',
      'Manassas',
      'VA',
      '',
      'Yes',
      '38.7662486',
      '-77.4857694'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Pediatrics of Manassas'
        AND o.latitude = '38.7662486'
        AND o.longitude = '-77.4857694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Pediatrics of Manassas'
        AND o.latitude = '38.7662486'
        AND o.longitude = '-77.4857694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Pediatrics of Manassas'
        AND o.latitude = '38.7662486'
        AND o.longitude = '-77.4857694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Pediatrics of Manassas'
        AND o.latitude = '38.7662486'
        AND o.longitude = '-77.4857694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Pediatrics of Manassas'
        AND o.latitude = '38.7662486'
        AND o.longitude = '-77.4857694'));

COMMIT;
