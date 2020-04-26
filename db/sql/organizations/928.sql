
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
      'Oyuna Hospice Inc',
      '5067 N. Mariposa St. Suite 104
Fresno, CA 93710',
      'Fresno',
      'CA',
      'Drop off anytime with advance notice, or during normal business hours M-F 9-5. Contact # 559-374-2726, any staff can assist.',
      'Yes',
      '36.8097046',
      '-119.7794719'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oyuna Hospice Inc'
        AND o.latitude = '36.8097046'
        AND o.longitude = '-119.7794719'));

COMMIT;
