
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
      'Interim HealthCare',
      '330 Billingsley Rd Suite 207
Charlotte, NC 28211',
      'Charlotte',
      'NC',
      'Can mail me petg at 425 white water falls drive Charlotte nc apt 523',
      'Yes',
      '35.1899103',
      '-80.8065471'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interim HealthCare'
        AND o.latitude = '35.1899103'
        AND o.longitude = '-80.8065471'));

COMMIT;
