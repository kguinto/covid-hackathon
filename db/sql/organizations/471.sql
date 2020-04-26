
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
      'PromptMed Urgent Care',
      '724 N Green Bay Rd
Waukegan, IL 60085',
      'Waukegan',
      'IL',
      'FedEx, UPS, USPS',
      '',
      '42.371635',
      '-87.8831656'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PromptMed Urgent Care'
        AND o.latitude = '42.371635'
        AND o.longitude = '-87.8831656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PromptMed Urgent Care'
        AND o.latitude = '42.371635'
        AND o.longitude = '-87.8831656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PromptMed Urgent Care'
        AND o.latitude = '42.371635'
        AND o.longitude = '-87.8831656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PromptMed Urgent Care'
        AND o.latitude = '42.371635'
        AND o.longitude = '-87.8831656'));

COMMIT;
