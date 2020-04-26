
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
      'Johnson County Developmental Supports',
      '10501 Lackman Rd
Lenexa, KS 66219',
      'Lenexa',
      'KS',
      'Please call first, 913-826-2626 and arrange drop off, or mail',
      'Yes',
      '38.9389717',
      '-94.7595278'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnson County Developmental Supports'
        AND o.latitude = '38.9389717'
        AND o.longitude = '-94.7595278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnson County Developmental Supports'
        AND o.latitude = '38.9389717'
        AND o.longitude = '-94.7595278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnson County Developmental Supports'
        AND o.latitude = '38.9389717'
        AND o.longitude = '-94.7595278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnson County Developmental Supports'
        AND o.latitude = '38.9389717'
        AND o.longitude = '-94.7595278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnson County Developmental Supports'
        AND o.latitude = '38.9389717'
        AND o.longitude = '-94.7595278'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnson County Developmental Supports'
        AND o.latitude = '38.9389717'
        AND o.longitude = '-94.7595278'));

COMMIT;
