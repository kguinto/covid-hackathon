
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
      'MDHHS Kalamazoo County CPS',
      '22 E Stockbridge Ave
Kalamazoo, MI 49001',
      'Kalamazoo',
      'MI',
      'Go to back and ring the doorbell',
      'Yes',
      '42.2775425',
      '-85.5829537'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MDHHS Kalamazoo County CPS'
        AND o.latitude = '42.2775425'
        AND o.longitude = '-85.5829537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'MDHHS Kalamazoo County CPS'
        AND o.latitude = '42.2775425'
        AND o.longitude = '-85.5829537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'MDHHS Kalamazoo County CPS'
        AND o.latitude = '42.2775425'
        AND o.longitude = '-85.5829537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'MDHHS Kalamazoo County CPS'
        AND o.latitude = '42.2775425'
        AND o.longitude = '-85.5829537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MDHHS Kalamazoo County CPS'
        AND o.latitude = '42.2775425'
        AND o.longitude = '-85.5829537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MDHHS Kalamazoo County CPS'
        AND o.latitude = '42.2775425'
        AND o.longitude = '-85.5829537'));

COMMIT;
