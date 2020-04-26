
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
      'Einstein Pediatrics',
      '8391 Old Courthouse Road, Suite 300
Vienna, VA 22182',
      'Vienna',
      'VA',
      'Drop in front of office',
      'Yes',
      '38.9144443',
      '-77.2350369'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Einstein Pediatrics'
        AND o.latitude = '38.9144443'
        AND o.longitude = '-77.2350369'));

COMMIT;
