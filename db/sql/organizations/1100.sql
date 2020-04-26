
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
      'Affinity Living Group (senior housing)',
      '400 2nd Ave NW
Hickory, NC 28601',
      'Hickory',
      'NC',
      'Attention: Stephanie Presley (PPE supplies)',
      'Yes',
      '35.735453',
      '-81.3455209'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Living Group (senior housing)'
        AND o.latitude = '35.735453'
        AND o.longitude = '-81.3455209'));

COMMIT;
