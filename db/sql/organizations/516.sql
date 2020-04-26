
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
      'Valley Urgent Care',
      '9335 Reseda Blvd. #100
Northridge, CA 91324',
      'Northridge',
      'CA',
      'We are flexible if someone can find us the supplies.',
      'Unsure',
      '34.2401575',
      '-118.5364331'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Urgent Care'
        AND o.latitude = '34.2401575'
        AND o.longitude = '-118.5364331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Urgent Care'
        AND o.latitude = '34.2401575'
        AND o.longitude = '-118.5364331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Urgent Care'
        AND o.latitude = '34.2401575'
        AND o.longitude = '-118.5364331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Urgent Care'
        AND o.latitude = '34.2401575'
        AND o.longitude = '-118.5364331'));

COMMIT;
