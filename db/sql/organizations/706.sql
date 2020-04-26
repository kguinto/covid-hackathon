
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
      'Advanced Pediatrics',
      '100 East Street, Suite 301
Vienna, VA 22180',
      'Vienna',
      'VA',
      'Call 703-938-5555 for instructions',
      'Yes',
      '38.9092933',
      '-77.2549656'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('toilet paper and paper towels',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Pediatrics'
        AND o.latitude = '38.9092933'
        AND o.longitude = '-77.2549656'));

COMMIT;
