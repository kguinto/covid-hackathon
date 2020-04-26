
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
      'ConvenientMD - Brunswick location ',
      '193 Bath Rd
Brunswick, ME 04011',
      'BRUNSWICK',
      'ME',
      '193 Bath Rd',
      'Yes',
      '43.9078629',
      '-69.9164585'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD - Brunswick location '
        AND o.latitude = '43.9078629'
        AND o.longitude = '-69.9164585'));

COMMIT;
