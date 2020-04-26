
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
      'Kensington Healthcare Center ',
      '3000 McComas Ave
Kensington, MD 20895',
      'Kensington ',
      'MD',
      'Drop off or mail to front desk',
      'Yes',
      '39.0317121',
      '-77.0616182'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kensington Healthcare Center '
        AND o.latitude = '39.0317121'
        AND o.longitude = '-77.0616182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kensington Healthcare Center '
        AND o.latitude = '39.0317121'
        AND o.longitude = '-77.0616182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kensington Healthcare Center '
        AND o.latitude = '39.0317121'
        AND o.longitude = '-77.0616182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kensington Healthcare Center '
        AND o.latitude = '39.0317121'
        AND o.longitude = '-77.0616182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kensington Healthcare Center '
        AND o.latitude = '39.0317121'
        AND o.longitude = '-77.0616182'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kensington Healthcare Center '
        AND o.latitude = '39.0317121'
        AND o.longitude = '-77.0616182'));

COMMIT;
