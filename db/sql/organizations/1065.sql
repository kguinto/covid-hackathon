
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
      'Maxim Healthcare Services',
      '2211 Quarry Dr Suite E-58B
West Lawn, PA 19609',
      'Reading',
      'PA',
      'We have a team working within the office Monday-Friday 8am-5:30 pm. Please ring our doorbell and a team member will be available to assist.',
      'Yes',
      '40.3428287',
      '-76.0033453'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services'
        AND o.latitude = '40.3428287'
        AND o.longitude = '-76.0033453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services'
        AND o.latitude = '40.3428287'
        AND o.longitude = '-76.0033453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services'
        AND o.latitude = '40.3428287'
        AND o.longitude = '-76.0033453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services'
        AND o.latitude = '40.3428287'
        AND o.longitude = '-76.0033453'));

COMMIT;
