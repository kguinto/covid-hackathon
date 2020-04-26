
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
      'Erlanger Express Care',
      ' 1635 Gunbarrel Rd Suite 110
 Chattanooga, TN 37421',
      'Chattanooga',
      'TN',
      '',
      'Unsure',
      '35.0207533',
      '-85.161208'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Erlanger Express Care'
        AND o.latitude = '35.0207533'
        AND o.longitude = '-85.161208'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Erlanger Express Care'
        AND o.latitude = '35.0207533'
        AND o.longitude = '-85.161208'));

COMMIT;
