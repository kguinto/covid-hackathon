
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
      'Saint Ages Medical Center',
      '1303 E Herndon Ave
Fresno, CA 93720',
      'Fresno',
      'CA',
      'Back of the hospital at the warehouse.',
      'No',
      '36.8352022',
      '-119.7655278'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Ages Medical Center'
        AND o.latitude = '36.8352022'
        AND o.longitude = '-119.7655278'));

COMMIT;
