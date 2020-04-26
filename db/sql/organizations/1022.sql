
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
      'St. Joseph Health Hospice',
      '200 W. Center Street Promenade, Suite 200B
Anaheim, CA 92805',
      'Anaheim',
      'CA',
      'Contact Lou Cobb: (714) 712-9559. Can be dropped off with front desk',
      'Yes',
      '33.833508',
      '-117.9158836'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Health Hospice'
        AND o.latitude = '33.833508'
        AND o.longitude = '-117.9158836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Health Hospice'
        AND o.latitude = '33.833508'
        AND o.longitude = '-117.9158836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Health Hospice'
        AND o.latitude = '33.833508'
        AND o.longitude = '-117.9158836'));

COMMIT;
