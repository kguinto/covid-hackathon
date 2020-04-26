
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
      'MedStar Washington Hospital Center-Anesthesia Dept',
      '110 Irving St NW
Washington, DC 20010',
      'Washington',
      'DC',
      'Please call to arrange drop off',
      'Yes',
      '38.9287831',
      '-77.0139308'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Washington Hospital Center-Anesthesia Dept'
        AND o.latitude = '38.9287831'
        AND o.longitude = '-77.0139308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Washington Hospital Center-Anesthesia Dept'
        AND o.latitude = '38.9287831'
        AND o.longitude = '-77.0139308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Washington Hospital Center-Anesthesia Dept'
        AND o.latitude = '38.9287831'
        AND o.longitude = '-77.0139308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Washington Hospital Center-Anesthesia Dept'
        AND o.latitude = '38.9287831'
        AND o.longitude = '-77.0139308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Washington Hospital Center-Anesthesia Dept'
        AND o.latitude = '38.9287831'
        AND o.longitude = '-77.0139308'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Washington Hospital Center-Anesthesia Dept'
        AND o.latitude = '38.9287831'
        AND o.longitude = '-77.0139308'));

COMMIT;
