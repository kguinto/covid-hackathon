
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
      'Hospice Care of the Lowcountry ',
      '7 Plantation Park Dr, Unit 4
Bluffton, SC 29910',
      'Bluffton ',
      'SC',
      '',
      'Yes',
      '32.2704055',
      '-80.8665443'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Care of the Lowcountry '
        AND o.latitude = '32.2704055'
        AND o.longitude = '-80.8665443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Care of the Lowcountry '
        AND o.latitude = '32.2704055'
        AND o.longitude = '-80.8665443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Care of the Lowcountry '
        AND o.latitude = '32.2704055'
        AND o.longitude = '-80.8665443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Care of the Lowcountry '
        AND o.latitude = '32.2704055'
        AND o.longitude = '-80.8665443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Care of the Lowcountry '
        AND o.latitude = '32.2704055'
        AND o.longitude = '-80.8665443'));

COMMIT;
