
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
      'Professional Healthcare Resources',
      '501 School St SW
Washington, DC 20024',
      'Washington',
      'DC',
      'RING BELL  9AM to 5:30 PM weekdays   ',
      'Yes',
      '38.8841308',
      '-77.0191504'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8841308'
        AND o.longitude = '-77.0191504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8841308'
        AND o.longitude = '-77.0191504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8841308'
        AND o.longitude = '-77.0191504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8841308'
        AND o.longitude = '-77.0191504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8841308'
        AND o.longitude = '-77.0191504'));

COMMIT;
