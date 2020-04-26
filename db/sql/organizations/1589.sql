
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
      'Mobile Medical Care (MobileMed)',
      '9309 Old Georgetown Rd
Bethesda, MD 20814',
      'Bethesda',
      'MD',
      'Please contact giving@mobilemedicalcare.org regarding your donation being mailed or dropped off.',
      'No',
      '39.008252',
      '-77.1126723'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Care (MobileMed)'
        AND o.latitude = '39.008252'
        AND o.longitude = '-77.1126723'));

COMMIT;
